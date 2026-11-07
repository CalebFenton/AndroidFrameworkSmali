.class public Landroid/icu/message2/MFDataModel$FunctionExpression;
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
    name = "FunctionExpression"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

.field public final blacklist attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/icu/message2/MFDataModel$FunctionAnnotation;Ljava/util/List;)V
    .registers 3
    .param p1, "annotation"    # Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$FunctionAnnotation;",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$FunctionExpression;->annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 308
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$FunctionExpression;->attributes:Ljava/util/List;

    .line 309
    return-void
.end method
