.class public final synthetic Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lambda$canonicalRecordCtr$1(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method
