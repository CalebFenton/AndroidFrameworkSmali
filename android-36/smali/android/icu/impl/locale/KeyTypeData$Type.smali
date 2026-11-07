.class Landroid/icu/impl/locale/KeyTypeData$Type;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Type"
.end annotation


# instance fields
.field blacklist bcpId:Ljava/lang/String;

.field blacklist legacyId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "legacyId"    # Ljava/lang/String;
    .param p2, "bcpId"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    .line 132
    return-void
.end method
