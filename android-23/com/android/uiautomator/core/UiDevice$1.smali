.class Lcom/android/uiautomator/core/UiDevice$1;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/UiDevice;->waitForWindowUpdate(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/UiDevice;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/UiDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/UiDevice;

    #@0
    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice$1;->this$0:Lcom/android/uiautomator/core/UiDevice;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    #@0
    .prologue
    .line 797
    return-void
.end method
