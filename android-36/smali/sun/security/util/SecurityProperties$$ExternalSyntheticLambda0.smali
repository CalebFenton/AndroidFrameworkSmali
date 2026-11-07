.class public final synthetic Lsun/security/util/SecurityProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/util/SecurityProperties$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lsun/security/util/SecurityProperties$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lsun/security/util/SecurityProperties;->lambda$privilegedGetOverridable$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
