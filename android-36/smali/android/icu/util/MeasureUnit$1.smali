.class Landroid/icu/util/MeasureUnit$1;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Landroid/icu/util/MeasureUnit$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    .line 702
    new-instance v0, Landroid/icu/util/MeasureUnit;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
