.class public interface abstract annotation Lcom/android/internal/accessibility/common/ShortcutConstants$AccessibilityFragmentType;
.super Ljava/lang/Object;
.source "ShortcutConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/common/ShortcutConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AccessibilityFragmentType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist INVISIBLE_TOGGLE:I = 0x1

.field public static final blacklist LAUNCH_ACTIVITY:I = 0x3

.field public static final blacklist TOGGLE:I = 0x2

.field public static final blacklist VOLUME_SHORTCUT_TOGGLE:I
