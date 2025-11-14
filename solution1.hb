# Create the HBase table

disable 'garage'
drop 'garage'

create 'garage',
  'vehicle',
  'owner',
  'repair',
  'time'

# Insert data
# VEHICLE 1: XYZ9876A
# Owner: Angel Putr
# Two repairs

# --- Repair 1 ---
put 'garage', 'XYZ9876A#2025-01-01',
    'vehicle:make', 'Toyota'
put 'garage', 'XYZ9876A#2025-01-01',
    'vehicle:model', 'Corolla'
put 'garage', 'XYZ9876A#2025-01-01',
    'owner:licence-number', 'X9876543Z'
put 'garage', 'XYZ9876A#2025-01-01',
    'owner:first-name', 'Angel'
put 'garage', 'XYZ9876A#2025-01-01',
    'owner:last-name', 'Putr'
put 'garage', 'XYZ9876A#2025-01-01',
    'owner:phone', '91234567'
put 'garage', 'XYZ9876A#2025-01-01',
    'repair:labour-cost', '150'
put 'garage', 'XYZ9876A#2025-01-01',
    'repair:parts-cost', '300'
put 'garage', 'XYZ9876A#2025-01-01',
    'repair:complexity-level', '2'
put 'garage', 'XYZ9876A#2025-01-01',
    'time:start', '2025-01-01'
put 'garage', 'XYZ9876A#2025-01-01',
    'time:end', '2024-01-11'

# --- Repair 2 ---
put 'garage', 'XYZ9876A#2025-05-05',
    'vehicle:make', 'Toyota'
put 'garage', 'XYZ9876A#2025-05-05',
    'vehicle:model', 'Corolla'
put 'garage', 'XYZ9876A#2025-05-05',
    'owner:licence-number', 'X9876543Z'
put 'garage', 'XYZ9876A#2025-05-05',
    'owner:first-name', 'Angel'
put 'garage', 'XYZ9876A#2025-05-05',
    'owner:last-name', 'Putr'
put 'garage', 'XYZ9876A#2025-05-05',
    'owner:phone', '91234567'
put 'garage', 'XYZ9876A#2025-05-05',
    'repair:labour-cost', '80'
put 'garage', 'XYZ9876A#2025-05-05',
    'repair:parts-cost', '120'
put 'garage', 'XYZ9876A#2025-05-05',
    'repair:complexity-level', '1'
put 'garage', 'XYZ9876A#2025-05-05',
    'time:start', '2025-05-05'
put 'garage', 'XYZ9876A#2025-05-05',
    'time:end', '2024-03-07'

# VEHICLE 2: ABC9988Z
# Owner: Darren Fasi
# Two repairs

# --- Repair 1 ---
put 'garage', 'ABC9988Z#2025-01-22',
    'vehicle:make', 'Honda'
put 'garage', 'ABC9988Z#2025-01-22',
    'vehicle:model', 'Civic'
put 'garage', 'ABC9988Z#2025-01-22',
    'owner:licence-number', 'T1234567B'
put 'garage', 'ABC9988Z#2025-01-22',
    'owner:first-name', 'Darren'
put 'garage', 'ABC9988Z#2025-01-22',
    'owner:last-name', 'Fasi'
put 'garage', 'ABC9988Z#2025-01-22',
    'owner:phone', '98765432'
put 'garage', 'ABC9988Z#2025-01-22',
    'repair:labour-cost', '200'
put 'garage', 'ABC9988Z#2025-01-22',
    'repair:parts-cost', '500'
put 'garage', 'ABC9988Z#2025-01-22',
    'repair:complexity-level', '3'
put 'garage', 'ABC9988Z#2025-01-22',
    'time:start', '2025-01-22'
put 'garage', 'ABC9988Z#2025-01-22',
    'time:end', '2024-02-16'

# --- Repair 2 ---
put 'garage', 'ABC9988Z#2025-11-12',
    'vehicle:make', 'Honda'
put 'garage', 'ABC9988Z#2025-11-12',
    'vehicle:model', 'Civic'
put 'garage', 'ABC9988Z#2025-11-12',
    'owner:licence-number', 'T1234567B'
put 'garage', 'ABC9988Z#2025-11-12',
    'owner:first-name', 'Darren'
put 'garage', 'ABC9988Z#2025-11-12',
    'owner:last-name', 'Fasi'
put 'garage', 'ABC9988Z#2025-11-12',
    'owner:phone', '98765432'
put 'garage', 'ABC9988Z#2025-11-12',
    'repair:labour-cost', '90'
put 'garage', 'ABC9988Z#2025-11-12',
    'repair:parts-cost', '220'
put 'garage', 'ABC9988Z#2025-11-12',
    'repair:complexity-level', '1'
put 'garage', 'ABC9988Z#2025-11-12',
    'time:start', '2025-11-12'
put 'garage', 'ABC9988Z#2025-11-12',
    'time:end', '2024-04-10'

# Show table
scan 'garage'
