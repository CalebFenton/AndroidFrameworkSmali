.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/LibraryProcessType;
.super Ljava/lang/Object;
.source "LibraryProcessType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist PROCESS_BROWSER:I = 0x1

.field public static final blacklist PROCESS_CHILD:I = 0x2

.field public static final blacklist PROCESS_UNINITIALIZED:I = 0x0

.field public static final blacklist PROCESS_WEBVIEW:I = 0x3

.field public static final blacklist PROCESS_WEBVIEW_CHILD:I = 0x4

.field public static final blacklist PROCESS_WEBVIEW_NONEMBEDDED:I = 0x5
