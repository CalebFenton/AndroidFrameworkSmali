.class public abstract Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
.super Ljava/lang/Object;
.source "RequestFinishedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;,
        Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;
    }
.end annotation


# static fields
.field public static final blacklist CANCELED:I = 0x2

.field public static final blacklist FAILED:I = 0x1

.field public static final blacklist SUCCEEDED:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAnnotations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getException()Landroid/net/connectivity/org/chromium/net/CronetException;
.end method

.method public abstract blacklist getFinishedReason()I
.end method

.method public abstract blacklist getMetrics()Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;
.end method

.method public abstract blacklist getResponseInfo()Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
.end method

.method public abstract blacklist getUrl()Ljava/lang/String;
.end method
