.class public Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
.super Ljava/lang/RuntimeException;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# instance fields
.field public blacklist reason:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;->reason:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;->reason:Ljava/lang/String;

    .line 74
    return-void
.end method
