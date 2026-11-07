.class public Landroid/icu/message2/MFDataModel$PatternMessage;
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
    name = "PatternMessage"
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

.field public final blacklist pattern:Landroid/icu/message2/MFDataModel$Pattern;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Landroid/icu/message2/MFDataModel$Pattern;)V
    .registers 3
    .param p2, "pattern"    # Landroid/icu/message2/MFDataModel$Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;",
            "Landroid/icu/message2/MFDataModel$Pattern;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$PatternMessage;->declarations:Ljava/util/List;

    .line 59
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$PatternMessage;->pattern:Landroid/icu/message2/MFDataModel$Pattern;

    .line 60
    return-void
.end method
