.class Lcom/android/server/wifi/WifiParser$IE;
.super Ljava/lang/Object;
.source "WifiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IE"
.end annotation


# instance fields
.field data:[B

.field id:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiParser;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiParser;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/wifi/WifiParser$IE;->this$0:Lcom/android/server/wifi/WifiParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
