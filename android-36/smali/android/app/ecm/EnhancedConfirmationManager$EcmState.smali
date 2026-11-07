.class interface abstract annotation Landroid/app/ecm/EnhancedConfirmationManager$EcmState;
.super Ljava/lang/Object;
.source "EnhancedConfirmationManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ecm/EnhancedConfirmationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "EcmState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ECM_STATE_GUARDED:I = 0x2

.field public static final blacklist ECM_STATE_GUARDED_AND_ACKNOWLEDGED:I = 0x1

.field public static final blacklist ECM_STATE_IMPLICIT:I = 0x3

.field public static final blacklist ECM_STATE_NOT_GUARDED:I
