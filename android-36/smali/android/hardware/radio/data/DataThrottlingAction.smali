.class public interface abstract annotation Landroid/hardware/radio/data/DataThrottlingAction;
.super Ljava/lang/Object;
.source "DataThrottlingAction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/DataThrottlingAction$$;
    }
.end annotation


# static fields
.field public static final blacklist HOLD:B = 0x3t

.field public static final blacklist NO_DATA_THROTTLING:B = 0x0t

.field public static final blacklist THROTTLE_ANCHOR_CARRIER:B = 0x2t

.field public static final blacklist THROTTLE_SECONDARY_CARRIER:B = 0x1t
