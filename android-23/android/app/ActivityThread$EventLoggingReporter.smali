.class Landroid/app/ActivityThread$EventLoggingReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/EventLogger$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLoggingReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$EventLoggingReporter;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public varargs report(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 5350
    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@3
    .line 5349
    return-void
.end method
