.class final Ldalvik/system/CloseGuard$DefaultReporter;
.super Ljava/lang/Object;
.source "CloseGuard.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ldalvik/system/CloseGuard$DefaultReporter;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 223
    invoke-static {p1, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 222
    return-void
.end method
