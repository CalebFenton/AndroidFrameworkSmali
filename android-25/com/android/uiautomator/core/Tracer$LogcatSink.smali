.class Lcom/android/uiautomator/core/Tracer$LogcatSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Lcom/android/uiautomator/core/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatSink"
.end annotation


# static fields
.field private static final LOGCAT_TAG:Ljava/lang/String; = "UiAutomatorTrace"


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/Tracer;


# direct methods
.method private constructor <init>(Lcom/android/uiautomator/core/Tracer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/Tracer;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$LogcatSink;->this$0:Lcom/android/uiautomator/core/Tracer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/uiautomator/core/Tracer;Lcom/android/uiautomator/core/Tracer$LogcatSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/Tracer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/Tracer$LogcatSink;-><init>(Lcom/android/uiautomator/core/Tracer;)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 88
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "UiAutomatorTrace"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 84
    return-void
.end method
