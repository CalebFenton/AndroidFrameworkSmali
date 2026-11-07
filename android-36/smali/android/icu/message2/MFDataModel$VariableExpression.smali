.class public Landroid/icu/message2/MFDataModel$VariableExpression;
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
    name = "VariableExpression"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist annotation:Landroid/icu/message2/MFDataModel$Annotation;

.field public final blacklist arg:Landroid/icu/message2/MFDataModel$VariableRef;

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
.method public constructor blacklist <init>(Landroid/icu/message2/MFDataModel$VariableRef;Landroid/icu/message2/MFDataModel$Annotation;Ljava/util/List;)V
    .registers 4
    .param p1, "arg"    # Landroid/icu/message2/MFDataModel$VariableRef;
    .param p2, "annotation"    # Landroid/icu/message2/MFDataModel$Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$VariableRef;",
            "Landroid/icu/message2/MFDataModel$Annotation;",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    .line 276
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    .line 277
    iput-object p3, p0, Landroid/icu/message2/MFDataModel$VariableExpression;->attributes:Ljava/util/List;

    .line 278
    return-void
.end method
