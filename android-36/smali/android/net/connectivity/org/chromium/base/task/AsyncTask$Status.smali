.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/task/AsyncTask$Status;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FINISHED:I = 0x2

.field public static final blacklist NUM_ENTRIES:I = 0x3

.field public static final blacklist PENDING:I = 0x0

.field public static final blacklist RUNNING:I = 0x1
