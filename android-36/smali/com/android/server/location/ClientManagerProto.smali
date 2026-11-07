.class public final Lcom/android/server/location/ClientManagerProto;
.super Ljava/lang/Object;
.source "ClientManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ClientManagerProto$RegistrationRecord;
    }
.end annotation


# static fields
.field public static final blacklist CLIENT_BROKERS:J = 0x20b00000001L

.field public static final blacklist REGISTRATION_RECORDS:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
