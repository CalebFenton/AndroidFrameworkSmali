.class public Landroid/net/wifi/RttManager$Capabilities;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Capabilities"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist supportedPeerType:I

.field public whitelist supportedType:I


# direct methods
.method public constructor whitelist <init>(Landroid/net/wifi/RttManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
