# comps.xml for EuroLinux 8

comps.xml rebraned from Red Hat.

In EuroLinux CI/CD create `default.xml` symlink to mark which one should be
used by `repocreate` scripts.

## How to rebrand

I personally replace with `vim`, but sed or whatever could be used. **Note:**
the order of substitutions is crucial.

- `Red Hat Enterprise Linux` -> `EuroLinux`
- `RHEL` -> `EL`
- `紅帽企業` (Red Hat Enterprise in Chinese) -> `Euro`
- `Red Hat` -> `EuroLinux`
- `redhat-logos*` -> `el-logos*`
- `redhat-release*` -> `el-release*`
- `redhat-indexhtml*` -> `el-indexhtml*`
- `codeready` -> `powertools`

You should not change following packages names:

- `redhat-rpm-config`
- `redhat-lsb-core`

### EuroLinux Beast Rebuild systems

Based on `SYSTEM_NAME` variable logos, releases, descriptions etc. This task is
listed on `Minor Version` checklist.

### CodeReady

CodeReady is name trademarked protected by Red Hat (and they use it as repo
name xDDD). The most popular name for this repository is popularized by CentOS
`PowerTools`.  Because we are technical folks, not lawyers, and we have to
somehow mitigate this corporation typical a-move - Just change all `Code Ready`
to `PowerTools` like CentOS did:

More information:
- https://lists.centos.org/pipermail/centos-devel/2019-September/017836.html


Use following substitutions then use substitutions that are prestended above:

- `Red Hat CodeReady Linux Builder` -> `EuroLinux PowerTools Linux Builder`
- `CodeReady` -> `PowerTools`
- `codeready` -> `powertools`

## About DocType line

Right now we remove `DOCTYPE` line, but if any client or user make request and
prove that there is edge-case that require that line we will add it.
