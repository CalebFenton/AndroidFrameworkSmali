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
.field public supportedPeerType:I

.field public supportedType:I

.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/RttManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Landroid/net/wifi/RttManager$Capabilities;->this$0:Landroid/net/wifi/RttManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
