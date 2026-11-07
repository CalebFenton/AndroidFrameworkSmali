.class public interface abstract Ljavax/sip/header/SubscriptionStateHeader;
.super Ljava/lang/Object;
.source "SubscriptionStateHeader.java"

# interfaces
.implements Ljavax/sip/header/ExpiresHeader;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final blacklist ACTIVE:Ljava/lang/String; = "Active"

.field public static final blacklist DEACTIVATED:Ljava/lang/String; = "Deactivated"

.field public static final blacklist GIVE_UP:Ljava/lang/String; = "Give-Up"

.field public static final blacklist NAME:Ljava/lang/String; = "Subscription-State"

.field public static final blacklist NO_RESOURCE:Ljava/lang/String; = "No-Resource"

.field public static final blacklist PENDING:Ljava/lang/String; = "Pending"

.field public static final blacklist PROBATION:Ljava/lang/String; = "Probation"

.field public static final blacklist REJECTED:Ljava/lang/String; = "Rejected"

.field public static final blacklist TERMINATED:Ljava/lang/String; = "Terminated"

.field public static final blacklist TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final blacklist UNKNOWN:Ljava/lang/String; = "Unknown"


# virtual methods
.method public abstract blacklist getReasonCode()Ljava/lang/String;
.end method

.method public abstract blacklist getRetryAfter()I
.end method

.method public abstract blacklist getState()Ljava/lang/String;
.end method

.method public abstract blacklist setReasonCode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setRetryAfter(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
