# (1)
get 'task2', 'position|312'

# (2)
get 'task2', 'application|007|312|SIM|01'

# (3)
disable 'task2'
alter 'task2', {NAME => 'EMPLOYER', METHOD => 'delete'}
enable 'task2'

get 'task2', 'application|007|312|SIM|01'

# (4)
put 'task2', 'position|312', 'POSITION:total-apps', '2'
put 'task2', 'position|313', 'POSITION:total-apps', '1'

get 'task2', 'position|312'
get 'task2', 'position|313'

# (5)
disable 'task2'
alter 'task2', {NAME => 'APPLICANT', VERSIONS => 5}
enable 'task2'

describe 'task2'
