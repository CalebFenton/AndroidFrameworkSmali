.class public interface abstract annotation Landroid/net/connectivity/org/chromium/net/impl/UrlRequestError;
.super Ljava/lang/Object;
.source "UrlRequestError.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ADDRESS_UNREACHABLE:I = 0x9

.field public static final blacklist CONNECTION_CLOSED:I = 0x5

.field public static final blacklist CONNECTION_REFUSED:I = 0x7

.field public static final blacklist CONNECTION_RESET:I = 0x8

.field public static final blacklist CONNECTION_TIMED_OUT:I = 0x6

.field public static final blacklist HOSTNAME_NOT_RESOLVED:I = 0x1

.field public static final blacklist INTERNET_DISCONNECTED:I = 0x2

.field public static final blacklist LISTENER_EXCEPTION_THROWN:I = 0x0

.field public static final blacklist NETWORK_CHANGED:I = 0x3

.field public static final blacklist OTHER:I = 0xb

.field public static final blacklist QUIC_PROTOCOL_FAILED:I = 0xa

.field public static final blacklist TIMED_OUT:I = 0x4
