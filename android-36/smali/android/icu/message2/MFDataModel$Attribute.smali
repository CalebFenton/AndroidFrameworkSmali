.class public Landroid/icu/message2/MFDataModel$Attribute;
.super Ljava/lang/Object;
.source "MFDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist name:Ljava/lang/String;

.field public final blacklist value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$Attribute;->name:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$Attribute;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    .line 330
    return-void
.end method
