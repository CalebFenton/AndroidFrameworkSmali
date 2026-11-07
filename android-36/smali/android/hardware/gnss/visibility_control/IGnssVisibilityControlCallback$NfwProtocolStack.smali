.class public interface abstract annotation Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwProtocolStack;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NfwProtocolStack"
.end annotation


# static fields
.field public static final blacklist CTRL_PLANE:I = 0x0

.field public static final blacklist IMS:I = 0xa

.field public static final blacklist OTHER_PROTOCOL_STACK:I = 0x64

.field public static final blacklist SIM:I = 0xb

.field public static final blacklist SUPL:I = 0x1
