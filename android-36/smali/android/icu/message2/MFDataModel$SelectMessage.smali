.class public Landroid/icu/message2/MFDataModel$SelectMessage;
.super Ljava/lang/Object;
.source "MFDataModel.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectMessage"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist declarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Expression;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Expression;",
            ">;",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Variant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    .local p2, "selectors":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Expression;>;"
    .local p3, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Variant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$SelectMessage;->declarations:Ljava/util/List;

    .line 84
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$SelectMessage;->selectors:Ljava/util/List;

    .line 85
    iput-object p3, p0, Landroid/icu/message2/MFDataModel$SelectMessage;->variants:Ljava/util/List;

    .line 86
    return-void
.end method
