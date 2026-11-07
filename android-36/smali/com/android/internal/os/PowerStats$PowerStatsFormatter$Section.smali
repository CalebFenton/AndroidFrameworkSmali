.class Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field public blacklist label:Ljava/lang/String;

.field public blacklist length:I

.field public blacklist optional:Z

.field public blacklist position:I

.field public blacklist typePower:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/PowerStats-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;-><init>()V

    return-void
.end method
