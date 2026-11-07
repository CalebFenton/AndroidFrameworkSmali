.class public Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ondevicepersonalization"

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    const-string v1, "ondevicepersonalization"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/ondevicepersonalization/internal/util/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-object v0
.end method
