.class public final Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
.super Ljava/lang/Object;
.source "ExtendedTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/icu/text/ExtendedTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# instance fields
.field private final blacklist isDst:Z

.field private final blacklist matchLength:I

.field private final blacklist tzId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "matchLength"    # I
    .param p2, "tzId"    # Ljava/lang/String;
    .param p3, "isDst"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->matchLength:I

    .line 71
    iput-object p2, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->tzId:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->isDst:Z

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;ZLcom/android/icu/text/ExtendedTimeZoneNames-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;-><init>(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public blacklist getMatchLength()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->matchLength:I

    return v0
.end method

.method public blacklist getTzId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->tzId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isDst()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->isDst:Z

    return v0
.end method
