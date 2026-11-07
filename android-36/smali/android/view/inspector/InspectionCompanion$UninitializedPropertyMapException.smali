.class public Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;
.super Ljava/lang/RuntimeException;
.source "InspectionCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/InspectionCompanion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitializedPropertyMapException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 70
    const-string v0, "Unable to read properties of an inspectable before mapping their IDs."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method
