.class public interface abstract annotation Landroid/hardware/radio/ims/ImsCall$CallState;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CallState"
.end annotation


# static fields
.field public static final blacklist ACTIVE:I = 0x0

.field public static final blacklist ALERTING:I = 0x3

.field public static final blacklist DIALING:I = 0x2

.field public static final blacklist DISCONNECTED:I = 0x7

.field public static final blacklist DISCONNECTING:I = 0x6

.field public static final blacklist HOLDING:I = 0x1

.field public static final blacklist INCOMING:I = 0x4

.field public static final blacklist WAITING:I = 0x5
