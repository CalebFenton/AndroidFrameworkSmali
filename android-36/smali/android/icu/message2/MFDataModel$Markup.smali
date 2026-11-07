.class public Landroid/icu/message2/MFDataModel$Markup;
.super Ljava/lang/Object;
.source "MFDataModel.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Markup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/MFDataModel$Markup$Kind;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist kind:Landroid/icu/message2/MFDataModel$Markup$Kind;

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/icu/message2/MFDataModel$Markup$Kind;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 5
    .param p1, "kind"    # Landroid/icu/message2/MFDataModel$Markup$Kind;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$Markup$Kind;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$Markup;->kind:Landroid/icu/message2/MFDataModel$Markup$Kind;

    .line 455
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$Markup;->name:Ljava/lang/String;

    .line 456
    iput-object p3, p0, Landroid/icu/message2/MFDataModel$Markup;->options:Ljava/util/Map;

    .line 457
    iput-object p4, p0, Landroid/icu/message2/MFDataModel$Markup;->attributes:Ljava/util/List;

    .line 458
    return-void
.end method
