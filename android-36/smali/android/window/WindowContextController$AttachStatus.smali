.class public interface abstract annotation Landroid/window/WindowContextController$AttachStatus;
.super Ljava/lang/Object;
.source "WindowContextController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AttachStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist STATUS_ATTACHED:I = 0x1

.field public static final blacklist STATUS_DETACHED:I = 0x2

.field public static final blacklist STATUS_FAILED:I = 0x3

.field public static final blacklist STATUS_INITIALIZED:I
