.class interface abstract annotation Landroid/app/UiAutomation$ConnectionState;
.super Ljava/lang/Object;
.source "UiAutomation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "ConnectionState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist CONNECTED:I = 0x2

.field public static final blacklist CONNECTING:I = 0x1

.field public static final blacklist DISCONNECTED:I = 0x0

.field public static final blacklist FAILED:I = 0x3
