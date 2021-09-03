# comps.xml for EuroLinux 8

comps.xml rebranded from Red Hat.

In EuroLinux CI/CD create `default.xml` symlink to mark which one should be
used by `repocreate` scripts.

## How to rebrand

I personally replace it with `vim`, but you could use sed or whatever. **Note:**
the order of substitutions is crucial.

- `Red Hat Enterprise Linux` -> `EuroLinux`
- `Red Hat CodeReady Linux Builder` -> `EuroLinux PowerTools Linux Builder`
- `RHEL` -> `EL`
- `紅帽企業` (Red Hat Enterprise in Chinese) -> `Euro`
- `Red Hat` -> `EuroLinux`
- `redhat-logos*` -> `el-logos*`
- `redhat-release*` -> `el-release*`
- `redhat-indexhtml*` -> `el-indexhtml*`
- `codeready` -> `powertools`
- `CodeReady` -> `PowerTools`

You must not change the following packages names:

- `redhat-rpm-config`
- `redhat-lsb-core`

### Packages removed from baseos-comps (type:name:groupid)

- default:dnf-plugin-subscription-manager:base
- default:dnf-plugin-subscription-manager:standard
- default:subscription-manager-cockpit:base
- default:subscription-manager-cockpit:standard
- default:subscription-manager-plugin-container:base
- default:subscription-manager-plugin-container:standard
- mandatory:subscription-manager:core


### EuroLinux Gaia Rebuild systems

Based on `SYSTEM_NAME` variable logos, releases, descriptions etc. This task is
listed on `Minor Version` checklist.

### CodeReady

CodeReady is the name trademarked/protected by Red Hat (and they use it as repo
name xDDD). CentOS popularize the most popular name for this repository
`PowerTools`.  Because we are technical folks, not lawyers, and we have to
somehow mitigate this typical corporation a-move - Change all `CodeReady`
to `PowerTools` like CentOS did:

More information:
- https://lists.centos.org/pipermail/centos-devel/2019-September/017836.html


Use following substitutions then use substitutions that are prestended above:

- `Red Hat CodeReady Linux Builder` -> `EuroLinux PowerTools Linux Builder`
- `CodeReady` -> `PowerTools`
- `codeready` -> `powertools`

## About DocType line

Right now, we remove the `DOCTYPE` line, but if any client or user makes a request and
prove that there is an edge-case that require that line, we will add it.
