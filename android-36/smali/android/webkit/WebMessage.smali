.class public Landroid/webkit/WebMessage;
.super Ljava/lang/Object;
.source "WebMessage.java"


# instance fields
.field private greylist-max-o mData:Ljava/lang/String;

.field private greylist-max-o mPorts:[Landroid/webkit/WebMessagePort;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ports"    # [Landroid/webkit/WebMessagePort;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/webkit/WebMessage;->mPorts:[Landroid/webkit/WebMessagePort;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist getData()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPorts()[Landroid/webkit/WebMessagePort;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/webkit/WebMessage;->mPorts:[Landroid/webkit/WebMessagePort;

    return-object v0
.end method
