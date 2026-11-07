.class interface abstract annotation Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$State;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist CANCELED:I = 0x5

.field public static final blacklist ERROR:I = 0x6

.field public static final blacklist NOT_STARTED:I = 0x0

.field public static final blacklist READING:I = 0x3

.field public static final blacklist READING_DONE:I = 0x4

.field public static final blacklist STARTED:I = 0x1

.field public static final blacklist SUCCESS:I = 0x7

.field public static final blacklist WAITING_FOR_FLUSH:I = 0x8

.field public static final blacklist WAITING_FOR_READ:I = 0x2

.field public static final blacklist WRITING:I = 0x9

.field public static final blacklist WRITING_DONE:I = 0xa
