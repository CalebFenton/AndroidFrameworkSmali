.class public final Lcom/android/adservices/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/adservices/LoggerFactory$Logger;
    }
.end annotation


# static fields
.field public static final blacklist ADID_TAG:Ljava/lang/String; = "adservices.adid"

.field public static final blacklist APPSETID_TAG:Ljava/lang/String; = "adservices.appsetid"

.field public static final blacklist FLEDGE_TAG:Ljava/lang/String; = "adservices.fledge"

.field public static final blacklist KANON_TAG:Ljava/lang/String; = "adservices.kanon"

.field public static final blacklist MEASUREMENT_TAG:Ljava/lang/String; = "adservices.measurement"

.field public static final blacklist TAG:Ljava/lang/String; = "adservices"

.field public static final blacklist TOPICS_TAG:Ljava/lang/String; = "adservices.topics"

.field public static final blacklist UI_TAG:Ljava/lang/String; = "adservices.ui"

.field private static final blacklist sAdIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sAppSetIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sFledgeLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sKAnonLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sMeasurementLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sTopicsLogger:Lcom/android/adservices/LoggerFactory$Logger;

.field private static final blacklist sUILogger:Lcom/android/adservices/LoggerFactory$Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 44
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.topics"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sTopicsLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 45
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.fledge"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sFledgeLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 46
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.kanon"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sKAnonLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 47
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.measurement"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sMeasurementLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 48
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.ui"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sUILogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 49
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.adid"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sAdIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

    .line 50
    new-instance v0, Lcom/android/adservices/LoggerFactory$Logger;

    const-string v1, "adservices.appsetid"

    invoke-direct {v0, v1, v2}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V

    sput-object v0, Lcom/android/adservices/LoggerFactory;->sAppSetIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAdIDLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 77
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sAdIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getAppSetIDLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sAppSetIDLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 61
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sFledgeLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getKAnonLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sKAnonLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 53
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getMeasurementLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sMeasurementLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getTopicsLogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sTopicsLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method

.method public static blacklist getUILogger()Lcom/android/adservices/LoggerFactory$Logger;
    .registers 1

    .line 73
    sget-object v0, Lcom/android/adservices/LoggerFactory;->sUILogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-object v0
.end method
