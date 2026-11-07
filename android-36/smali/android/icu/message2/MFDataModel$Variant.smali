.class public Landroid/icu/message2/MFDataModel$Variant;
.super Ljava/lang/Object;
.source "MFDataModel.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variant"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist value:Landroid/icu/message2/MFDataModel$Pattern;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V
    .registers 3
    .param p2, "value"    # Landroid/icu/message2/MFDataModel$Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;",
            ">;",
            "Landroid/icu/message2/MFDataModel$Pattern;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    .line 168
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$Variant;->value:Landroid/icu/message2/MFDataModel$Pattern;

    .line 169
    return-void
.end method
