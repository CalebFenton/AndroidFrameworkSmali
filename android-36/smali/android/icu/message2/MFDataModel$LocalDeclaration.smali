.class public Landroid/icu/message2/MFDataModel$LocalDeclaration;
.super Ljava/lang/Object;
.source "MFDataModel.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$Declaration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDeclaration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist name:Ljava/lang/String;

.field public final blacklist value:Landroid/icu/message2/MFDataModel$Expression;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/message2/MFDataModel$Expression;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/icu/message2/MFDataModel$Expression;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/icu/message2/MFDataModel$LocalDeclaration;->name:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/icu/message2/MFDataModel$LocalDeclaration;->value:Landroid/icu/message2/MFDataModel$Expression;

    .line 138
    return-void
.end method
