.class public interface abstract Ljavax/sip/header/WarningHeader;
.super Ljava/lang/Object;
.source "WarningHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist ATTRIBUTE_NOT_UNDERSTOOD:I = 0xa

.field public static final blacklist INCOMPATIBLE_BANDWIDTH_UNITS:I = 0x14

.field public static final blacklist INCOMPATIBLE_MEDIA_FORMAT:I = 0x15

.field public static final blacklist INCOMPATIBLE_NETWORK_ADDRESS_FORMATS:I = 0x16

.field public static final blacklist INCOMPATIBLE_NETWORK_PROTOCOL:I = 0x17

.field public static final blacklist INCOMPATIBLE_TRANSPORT_PROTOCOL:I = 0x18

.field public static final blacklist INSUFFICIENT_BANDWIDTH:I = 0x1e

.field public static final blacklist MEDIA_TYPE_NOT_AVAILABLE:I = 0x28

.field public static final blacklist MISCELLANEOUS_WARNING:I = 0x63

.field public static final blacklist MULTICAST_NOT_AVAILABLE:I = 0x32

.field public static final blacklist NAME:Ljava/lang/String; = "Warning"

.field public static final blacklist SESSION_DESCRIPTION_PARAMETER_NOT_UNDERSTOOD:I = 0x3c

.field public static final blacklist UNICAST_NOT_AVAILABLE:I = 0x33


# virtual methods
.method public abstract blacklist getAgent()Ljava/lang/String;
.end method

.method public abstract blacklist getCode()I
.end method

.method public abstract blacklist getText()Ljava/lang/String;
.end method

.method public abstract blacklist setAgent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setCode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist setText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
