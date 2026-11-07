.class public final Landroid/service/notification/ManagedServicesProto$SnoozedServices;
.super Ljava/lang/Object;
.source "ManagedServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ManagedServicesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnoozedServices"
.end annotation


# static fields
.field public static final blacklist SNOOZED:J = 0x20b00000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ManagedServicesProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/notification/ManagedServicesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
