.class public final Landroid/system/StructPollfd;
.super Ljava/lang/Object;
.source "StructPollfd.java"


# instance fields
.field public whitelist test-api events:S

.field public whitelist test-api fd:Ljava/io/FileDescriptor;

.field public whitelist test-api revents:S

.field public whitelist test-api userData:Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
