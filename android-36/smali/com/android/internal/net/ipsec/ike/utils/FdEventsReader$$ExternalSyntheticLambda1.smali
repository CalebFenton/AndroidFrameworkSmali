.class public final synthetic Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;

    return-void
.end method


# virtual methods
.method public final whitelist onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;

    invoke-static {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;->$r8$lambda$2LiFDOGp4ci9w4EU1BjgMc6Rreg(Lcom/android/internal/net/ipsec/ike/utils/FdEventsReader;Ljava/io/FileDescriptor;I)I

    move-result p1

    return p1
.end method
