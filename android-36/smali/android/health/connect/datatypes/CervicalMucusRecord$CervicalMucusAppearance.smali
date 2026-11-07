.class public final Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance;
.super Ljava/lang/Object;
.source "CervicalMucusRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/CervicalMucusRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CervicalMucusAppearance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance$CervicalMucusAppearances;
    }
.end annotation


# static fields
.field public static final whitelist APPEARANCE_CREAMY:I = 0x3

.field public static final whitelist APPEARANCE_DRY:I = 0x1

.field public static final whitelist APPEARANCE_EGG_WHITE:I = 0x5

.field public static final whitelist APPEARANCE_STICKY:I = 0x2

.field public static final whitelist APPEARANCE_UNKNOWN:I = 0x0

.field public static final whitelist APPEARANCE_UNUSUAL:I = 0x6

.field public static final whitelist APPEARANCE_WATERY:I = 0x4

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 118
    nop

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 124
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 125
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 126
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 119
    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusAppearance;->VALID_TYPES:Ljava/util/Set;

    .line 118
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
