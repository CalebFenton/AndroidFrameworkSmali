.class interface abstract annotation Landroid/view/textclassifier/TextClassification$IntentType;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "IntentType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final greylist-max-o ACTIVITY:I = 0x0

.field public static final greylist-max-o SERVICE:I = 0x1

.field public static final greylist-max-o UNSUPPORTED:I = -0x1
