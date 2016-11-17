.class Landroid/net/VpnService$Callback;
.super Landroid/os/Binder;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method private constructor <init>(Landroid/net/VpnService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/VpnService;

    #@0
    .prologue
    .line 366
    iput-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/VpnService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;)V

    #@3
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 369
    const v0, 0xffffff

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 370
    iget-object v0, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    #@7
    invoke-virtual {v0}, Landroid/net/VpnService;->onRevoke()V

    #@a
    .line 371
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 373
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method
