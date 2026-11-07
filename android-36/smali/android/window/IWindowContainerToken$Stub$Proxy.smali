.class Landroid/window/IWindowContainerToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowContainerToken.java"

# interfaces
.implements Landroid/window/IWindowContainerToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowContainerToken$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/window/IWindowContainerToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/window/IWindowContainerToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "android.window.IWindowContainerToken"

    return-object v0
.end method
