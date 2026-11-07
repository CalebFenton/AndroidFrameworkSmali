.class public final Lcom/android/server/location/ClientManagerProto$RegistrationRecord;
.super Ljava/lang/Object;
.source "ClientManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ClientManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegistrationRecord"
.end annotation


# static fields
.field public static final blacklist ACTION:J = 0x10500000002L

.field public static final blacklist BROKER:J = 0x10900000003L

.field public static final blacklist TIMESTAMP_MS:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/location/ClientManagerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/ClientManagerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
