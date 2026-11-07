.class public Landroid/icu/message2/MFDataModel$FunctionAnnotation;
.super Ljava/lang/Object;
.source "MFDataModel.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionAnnotation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
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
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    .line 403
    return-void
.end method
