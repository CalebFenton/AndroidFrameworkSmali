.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IpcDataCache$RemoteCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda8;->f$0:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/UserManager$$ExternalSyntheticLambda8;->f$0:Landroid/os/UserManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/os/UserManager;->$r8$lambda$BXQB3W5ypP7lQNKJ1ut1KMEbMD8(Landroid/os/UserManager;Ljava/lang/Integer;)[I

    move-result-object p1

    return-object p1
.end method
