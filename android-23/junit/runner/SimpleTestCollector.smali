.class public Ljunit/runner/SimpleTestCollector;
.super Ljunit/runner/ClassPathTestCollector;
.source "SimpleTestCollector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljunit/runner/ClassPathTestCollector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected isTestClass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "classFileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 17
    const-string/jumbo v1, ".class"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 18
    const/16 v1, 0x24

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v1

    #@10
    if-gez v1, :cond_0

    #@12
    .line 19
    const-string/jumbo v1, "Test"

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 16
    :cond_0
    return v0
.end method
