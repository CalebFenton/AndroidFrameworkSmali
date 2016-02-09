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
.field bcpId:Ljava/lang/String;

.field legacyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "legacyId"    # Ljava/lang/String;
    .param p2, "bcpId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    #@5
    .line 78
    iput-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    #@7
    .line 76
    return-void
.end method
