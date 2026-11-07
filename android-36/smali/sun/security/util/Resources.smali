.class public Lsun/security/util/Resources;
.super Ljava/util/ListResourceBundle;
.source "Resources.java"


# static fields
.field private static final blacklist contents:[[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    const/16 v0, 0x41

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "invalid.null.input.s."

    const-string v2, "invalid null input(s)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "actions.can.only.be.read."

    const-string v2, "actions can only be \'read\'"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "permission.name.name.syntax.invalid."

    const-string v2, "permission name [{0}] syntax invalid: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Credential.Class.not.followed.by.a.Principal.Class.and.Name"

    const-string v2, "Credential Class not followed by a Principal Class and Name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Principal.Class.not.followed.by.a.Principal.Name"

    const-string v2, "Principal Class not followed by a Principal Name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Principal.Name.must.be.surrounded.by.quotes"

    const-string v2, "Principal Name must be surrounded by quotes"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Principal.Name.missing.end.quote"

    const-string v2, "Principal Name missing end quote"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "PrivateCredentialPermission.Principal.Class.can.not.be.a.wildcard.value.if.Principal.Name.is.not.a.wildcard.value"

    const-string v2, "PrivateCredentialPermission Principal Class can not be a wildcard (*) value if Principal Name is not a wildcard (*) value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "CredOwner.Principal.Class.class.Principal.Name.name"

    const-string v2, "CredOwner:\n\tPrincipal Class = {0}\n\tPrincipal Name = {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "provided.null.name"

    const-string v2, "provided null name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "provided.null.keyword.map"

    const-string v2, "provided null keyword map"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "provided.null.OID.map"

    const-string v2, "provided null OID map"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "NEWLINE"

    const-string v2, "\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "invalid.null.AccessControlContext.provided"

    const-string v2, "invalid null AccessControlContext provided"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "invalid.null.action.provided"

    const-string v2, "invalid null action provided"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "invalid.null.Class.provided"

    const-string v2, "invalid null Class provided"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Subject."

    const-string v2, "Subject:\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, ".Principal."

    const-string v2, "\tPrincipal: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, ".Public.Credential."

    const-string v2, "\tPublic Credential: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, ".Private.Credentials.inaccessible."

    const-string v2, "\tPrivate Credentials inaccessible\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, ".Private.Credential."

    const-string v2, "\tPrivate Credential: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, ".Private.Credential.inaccessible."

    const-string v2, "\tPrivate Credential inaccessible\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Subject.is.read.only"

    const-string v2, "Subject is read-only"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    const-string v2, "attempting to add an object which is not an instance of java.security.Principal to a Subject\'s Principal Set"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    const-string v2, "attempting to add an object which is not an instance of {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "LoginModuleControlFlag."

    const-string v2, "LoginModuleControlFlag: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Invalid.null.input.name"

    const-string v2, "Invalid null input: name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "No.LoginModules.configured.for.name"

    const-string v2, "No LoginModules configured for {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "invalid.null.Subject.provided"

    const-string v2, "invalid null Subject provided"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "invalid.null.CallbackHandler.provided"

    const-string v2, "invalid null CallbackHandler provided"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "null.subject.logout.called.before.login"

    const-string v2, "null subject - logout called before login"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "unable.to.instantiate.LoginModule.module.because.it.does.not.provide.a.no.argument.constructor"

    const-string v2, "unable to instantiate LoginModule, {0}, because it does not provide a no-argument constructor"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "unable.to.instantiate.LoginModule"

    const-string v2, "unable to instantiate LoginModule"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "unable.to.instantiate.LoginModule."

    const-string v2, "unable to instantiate LoginModule: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "unable.to.find.LoginModule.class."

    const-string v2, "unable to find LoginModule class: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "unable.to.access.LoginModule."

    const-string v2, "unable to access LoginModule: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "Login.Failure.all.modules.ignored"

    const-string v2, "Login Failure: all modules ignored"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "java.security.policy.error.parsing.policy.message"

    const-string v2, "java.security.policy: error parsing {0}:\n\t{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "java.security.policy.error.adding.Permission.perm.message"

    const-string v2, "java.security.policy: error adding Permission, {0}:\n\t{1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "java.security.policy.error.adding.Entry.message"

    const-string v2, "java.security.policy: error adding Entry:\n\t{0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "alias.name.not.provided.pe.name."

    const-string v2, "alias name not provided ({0})"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "unable.to.perform.substitution.on.alias.suffix"

    const-string v2, "unable to perform substitution on alias, {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "substitution.value.prefix.unsupported"

    const-string v2, "substitution value, {0}, unsupported"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "LPARAM"

    const-string v2, "("

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "RPARAM"

    const-string v2, ")"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "type.can.t.be.null"

    const-string v2, "type can\'t be null"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "keystorePasswordURL.can.not.be.specified.without.also.specifying.keystore"

    const-string v2, "keystorePasswordURL can not be specified without also specifying keystore"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "expected.keystore.type"

    const-string v2, "expected keystore type"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "expected.keystore.provider"

    const-string v2, "expected keystore provider"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "multiple.Codebase.expressions"

    const-string v2, "multiple Codebase expressions"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "multiple.SignedBy.expressions"

    const-string v2, "multiple SignedBy expressions"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "duplicate.keystore.domain.name"

    const-string v2, "duplicate keystore domain name: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "duplicate.keystore.name"

    const-string v2, "duplicate keystore name: {0}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "SignedBy.has.empty.alias"

    const-string v2, "SignedBy has empty alias"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "can.not.specify.Principal.with.a.wildcard.class.without.a.wildcard.name"

    const-string v2, "can not specify Principal with a wildcard class without a wildcard name"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "expected.codeBase.or.SignedBy.or.Principal"

    const-string v2, "expected codeBase or SignedBy or Principal"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "expected.permission.entry"

    const-string v2, "expected permission entry"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "number."

    const-string v2, "number "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "expected.expect.read.end.of.file."

    const-string v2, "expected [{0}], read [end of file]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "expected.read.end.of.file."

    const-string v2, "expected [;], read [end of file]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "line.number.msg"

    const-string v2, "line {0}: {1}"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "line.number.expected.expect.found.actual."

    const-string v2, "line {0}: expected [{1}], found [{2}]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "null.principalClass.or.principalName"

    const-string v2, "null principalClass or principalName"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "PKCS11.Token.providerName.Password."

    const-string v2, "PKCS11 Token [{0}] Password: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "unable.to.instantiate.Subject.based.policy"

    const-string v2, "unable to instantiate Subject-based policy"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 2

    .line 169
    sget-object v0, Lsun/security/util/Resources;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
