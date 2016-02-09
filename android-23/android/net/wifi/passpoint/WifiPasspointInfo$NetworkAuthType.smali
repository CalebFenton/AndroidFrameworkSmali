.class public Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkAuthType"
.end annotation


# static fields
.field public static final TYPE_DNS_REDIRECTION:I = 0x3

.field public static final TYPE_HTTP_REDIRECTION:I = 0x2

.field public static final TYPE_ONLINE_ENROLLMENT:I = 0x1

.field public static final TYPE_TERMS_AND_CONDITION:I


# instance fields
.field public redirectUrl:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ","

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
