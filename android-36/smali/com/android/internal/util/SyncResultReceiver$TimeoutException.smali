.class public final Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
.super Ljava/lang/Exception;
.source "SyncResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/SyncResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/util/SyncResultReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/SyncResultReceiver$TimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method
