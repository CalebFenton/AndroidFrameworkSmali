.class public final synthetic Ljava/util/ResourceBundle$Control$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/reflect/Constructor;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/ResourceBundle$Control$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/ResourceBundle$Control$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Ljava/util/ResourceBundle$Control;->lambda$newBundle$0(Ljava/lang/reflect/Constructor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
