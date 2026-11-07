.class public interface abstract annotation Landroid/widget/EditorTouchState$MultiTapStatus;
.super Ljava/lang/Object;
.source "EditorTouchState.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditorTouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MultiTapStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DOUBLE_TAP:I = 0x2

.field public static final blacklist FIRST_TAP:I = 0x1

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist TRIPLE_CLICK:I = 0x3
