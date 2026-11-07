.class public Landroid/hardware/SensorPrivacyManager$Sources;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$Sources$Source;
    }
.end annotation


# static fields
.field public static final blacklist DIALOG:I = 0x3

.field public static final blacklist OTHER:I = 0x5

.field public static final blacklist QS_TILE:I = 0x1

.field public static final blacklist SAFETY_CENTER:I = 0x6

.field public static final blacklist SETTINGS:I = 0x2

.field public static final blacklist SHELL:I = 0x4


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
